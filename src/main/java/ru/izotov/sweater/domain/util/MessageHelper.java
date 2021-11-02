package ru.izotov.sweater.domain.util;

import ru.izotov.sweater.domain.User;

public abstract class MessageHelper {
    public static String getAuthorName(User author) {
        return author != null ? author.getUsername() : "<none>";
    }
}
