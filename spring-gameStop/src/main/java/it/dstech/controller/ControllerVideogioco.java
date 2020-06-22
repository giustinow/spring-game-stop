package it.dstech.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import it.dstech.model.Videogioco;
import it.dstech.service.ServiceVideogioco;

@Controller
public class ControllerVideogioco {
	@Autowired
	private ServiceVideogioco service;

	@RequestMapping(value = { "/", "/home" })
	public ModelAndView home() {
		return new ModelAndView("home");
	}

	@RequestMapping(value = "/videogiochi", method = RequestMethod.POST)
	public ModelAndView videogiochi(Map<String, Object> model) {
			ModelAndView view = new ModelAndView("videogiochi");
			Videogioco videogioco = new Videogioco();
			model.put("videogioco", videogioco);
			view.addObject("lista", service.listAll());
			return view;
	}
	
	@RequestMapping(value = "/nuovoVideogioco", method = RequestMethod.POST)
	public ModelAndView nuovoVideogioco(@ModelAttribute("videogioco") Videogioco videogioco, Map<String, Object> model) {
		service.save(videogioco);
		return videogiochi(model);
	}
	@RequestMapping(value = "/elimina")
	public ModelAndView eliminaDigimon(@RequestParam("videogioco") Long id, Map<String, Object> model) {
		service.delete(id);
		return videogiochi(model);
	}
	
	@RequestMapping(value = "/modifica")
	public ModelAndView modifica(@RequestParam("videogioco") Long id) {
		ModelAndView view = new ModelAndView("modifica");
		view.addObject("videogioco", service.get(id));
		return view;
	}

	@RequestMapping(value = "/aggiorna", method = RequestMethod.POST)
	public ModelAndView aggiorna(@ModelAttribute("videogioco") Videogioco digimon, Map<String, Object> model) {
		service.save(digimon);
		return videogiochi(model);
	}
	@RequestMapping(value = "/sort", method = RequestMethod.POST)
	public ModelAndView sort(@RequestParam("sort") String sort, Map<String, Object> model) {
		switch (Integer.parseInt(sort)) {
		case 1: {
			ModelAndView view = new ModelAndView("videogiochi");
			Videogioco videogioco = new Videogioco();
			model.put("videogioco", videogioco);
			view.addObject("lista", service.sortTitolo());
			return view;
		}
		case 2: {
			ModelAndView view = new ModelAndView("videogiochi");
			Videogioco videogioco = new Videogioco();
			model.put("videogioco", videogioco);
			view.addObject("lista", service.sortClassificazione());
			return view;
		}
		case 3: {
			ModelAndView view = new ModelAndView("videogiochi");
			Videogioco videogioco = new Videogioco();
			model.put("videogioco", videogioco);
			view.addObject("lista", service.sortCategoria());
			return view;
		}
		case 4: {
			ModelAndView view = new ModelAndView("videogiochi");
			Videogioco videogioco = new Videogioco();
			model.put("videogioco", videogioco);
			view.addObject("lista", service.sortPrezzo());
			return view;
		}
		}
		return null;
	}

}
