package au.usyd.elec5619.web;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import au.usyd.elec5619.domain.Product;
import au.usyd.elec5619.service.ProductManager;

@Controller
@RequestMapping(value="/product/**")
public class ProductController {
	@Resource(name="productManager")
	private ProductManager productManager;
	@RequestMapping(value="/add")
	public String addProduct(Model uniModel){
		return "add";
	}
	
	@RequestMapping("/demo")
    public ModelAndView h_handelList () throws Exception {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("volunteer_profile");
        return mv;
    }
	
	/*@RequestMapping(value="/demo")
	public String demoTest(Model uniModel){
		return "demo";
	}*/
	
	@RequestMapping(value="/add", method=RequestMethod.POST)
	public String addProduct(HttpServletRequest httpServletRequest){
		Product product=new Product();
		product.setDescription(httpServletRequest.getParameter("description"));
		product.setPrice(Double.valueOf(httpServletRequest.getParameter("price")));
		this.productManager.addProduct(product);
		return "redirect:/hello.htm";
	}
	
	@RequestMapping(value="/edit/{id}", method=RequestMethod.GET)
	public String editProduct(@PathVariable("id") Long id, Model uiModel){
		Product product=this.productManager.getProductById(id);
		uiModel.addAttribute("product",product);
		return "edit";
		
	}
	
	@RequestMapping(value="/edit/**", method=RequestMethod.POST)
	public String editProduct(@Valid Product product){
		this.productManager.updateProduct(product);
		System.out.println(product.getId());
		return "redirect:/hello.htm";
		
	}
	
	@RequestMapping(value="/delete/{id}", method=RequestMethod.GET)
	public String deleteProduct(@PathVariable("id") Long id){
		this.productManager.deleteProduct(id);
		return "redirect:/hello.htm";
		
	}
	
}
