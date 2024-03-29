package cn.edu.guet.zti.web.serviceImpl;

import cn.edu.guet.zti.web.pojo.Place;
import junit.framework.TestCase;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:applicationContext.xml", "classpath:springmvc-servlet.xml"})
public class PlaceServiceImplTest {

    @Autowired
    private PlaceServiceImpl placeServiceImpl;

    @Test
    public void addPlace() {
        Place place = new Place();
        place.setPlaceName("南宁");
        place.setPlaceUrlId("nanning0771");
        int isSuccess = placeServiceImpl.addPlace(place);
        TestCase.assertEquals(1, isSuccess);
    }

}
