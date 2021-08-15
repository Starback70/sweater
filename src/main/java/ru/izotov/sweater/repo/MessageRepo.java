package ru.izotov.sweater.repo;

import org.springframework.data.repository.CrudRepository;
import ru.izotov.sweater.domain.Message;

import java.util.List;

public interface MessageRepo extends CrudRepository<Message, Integer> {
    List<Message> findByTag(String tag);
}
