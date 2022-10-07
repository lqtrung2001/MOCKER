package com.mockez.service.impl;

import com.mockez.domain.model.GenerateReq;
import com.mockez.domain.model.entity.Field;
import com.mockez.repository.GenerateTypeRepository;
import com.mockez.service.GenerateService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

@Service
@AllArgsConstructor
public class GenerateServiceImpl implements GenerateService {

    private GenerateTypeRepository generateTypeRepository;

    @Override
    public List<Map<String, String>> generate(GenerateReq body) {

        List<Map<String, String>> result = new ArrayList<>();
        List<Field> fields = body.getFields();

        int index = 0, row = body.getRow();
        Random random = new Random();

        while (++index < row) {
            Map<String, String> map = new HashMap<>();
            fields.forEach(field -> map.put(
                    field.getName(),
                    generateTypeRepository
                            .findById(field.getGenerateType().getId())
                            .orElseThrow()
                            .getSources()
                            .get(random.nextInt(0, 1000))
                            .getValue()
                    ));
            result.add(map);
        }
        return result;
    }
}
