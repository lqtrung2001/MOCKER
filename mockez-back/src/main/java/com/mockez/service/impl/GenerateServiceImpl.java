package com.mockez.service.impl;

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
import java.util.concurrent.atomic.AtomicInteger;

@Service
@RequiredArgsConstructor
public class GenerateServiceImpl implements GenerateService {

    private final GenerateTypeRepository generateTypeRepository;

    @Override
    public List<Map<String, String>> generate(Integer row, List<Field> fields) {

        List<Map<String, String>> result = new ArrayList<>();

        AtomicInteger atomicInteger = new AtomicInteger(0);
        Random random = new Random();

        while (atomicInteger.getAndIncrement() < row) {
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
