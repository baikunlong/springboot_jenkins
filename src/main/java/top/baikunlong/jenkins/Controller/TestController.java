package top.baikunlong.jenkins.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author baikunlong
 * @date 2020/10/3 21:50
 */
@RestController
public class TestController {
    @GetMapping("/test")
    public String test(){
        StringBuilder builder = new StringBuilder();
        builder.append("这是测试jenkins自动化部署的项目。端口-->8989，再来试试push成功了吗333,使用docker方式启动！！！\n");
        builder.append("小号测试推送测试，push自动部署已成功✌✌✌！\n");
        builder.append("大号来说两句\n");
        builder.append("小号来说两句\n");
        return builder.toString();
    }
}
