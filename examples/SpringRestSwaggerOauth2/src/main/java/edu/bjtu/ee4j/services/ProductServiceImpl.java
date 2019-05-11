package edu.bjtu.ee4j.services;

import edu.bjtu.ee4j.domain.Product;
import edu.bjtu.ee4j.repositories.ProductRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.google.common.util.concurrent.RateLimiter;


@Service
public class ProductServiceImpl implements ProductService {
    private final Logger logger = LoggerFactory.getLogger(this.getClass());
    private ProductRepository productRepository;
    private RateLimiter rateLimiter = RateLimiter.create(1); // rate is "10 permits per second"

    @Autowired
    public void setProductRepository(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    @Override
    public Iterable<Product> listAllProducts() {
    	rateLimiter.acquire();
        logger.debug("listAllProducts called");
        return productRepository.findAll();
    }

    @Override
    public Product getProductById(Integer id) {
    	rateLimiter.acquire();
        logger.debug("getProductById called");
        return productRepository.findById(id).orElse(null);
    }

    @Override
    public Product saveProduct(Product product) {
    	rateLimiter.acquire();
        logger.debug("saveProduct called");
        return productRepository.save(product);
    }

    @Override
    public void deleteProduct(Integer id) {
    	rateLimiter.acquire();
        logger.debug("deleteProduct called");
        productRepository.deleteById(id);
    }
}
