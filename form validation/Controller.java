@Autowired
private UserValidator userValidator;

@InitBinder("command")
private void initUserValidatorBinder(WebDataBinder binder) {
        binder.setValidator(userValidator);
}


@RequestMapping(method = RequestMethod.POST)
    public ModelAndView addUser(@ModelAttribute("command") User user, BindingResult result, SessionStatus status) {
        userValidator.validate(user, result);
        if (result.hasErrors()) {
            return new ModelAndView("index", "command", user);
        } else {
            status.setComplete();
        }
        return new ModelAndView("index", "command", user);
    }





