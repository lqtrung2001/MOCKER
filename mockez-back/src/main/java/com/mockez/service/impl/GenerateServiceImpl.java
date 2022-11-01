package com.mockez.service.impl;

import com.mockez.domain.model.GenerateReq;
import com.mockez.domain.model.entity.Field;
import com.mockez.domain.model.entity.Source;
import com.mockez.repository.GenerateTypeRepository;
import com.mockez.service.GenerateService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

@Service
@RequiredArgsConstructor
public class GenerateServiceImpl implements GenerateService {

    private final GenerateTypeRepository generateTypeRepository;

    @Override
    public List<Map<String, String>> generate(GenerateReq body) {

        List<Map<String, String>> result = new ArrayList<>();
        List<Field> fields = body.getFields();

        int index = 0, row = body.getRow();
        Random random = new Random();

        while (++index < row) {
            Map<String, String> map = new HashMap<>();
            fields.forEach(field -> {
                List<Source> sources = generateTypeRepository
                        .findById(field.getGenerateType().getId())
                        .orElseThrow()
                        .getSources();
                map.put(
                        field.getName(),
                        sources.get(random.nextInt(0, sources.size()))
                                .getValue()
                        );
            });
            result.add(map);
        }
        return result;
    }
}
