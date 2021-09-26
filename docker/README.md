# Инструкция по запуску

1. [Установить cuda драйвера](https://docs.nvidia.com/cuda/cuda-installation-guide-linux/index.html)

2. Развернуть докер

    2.1 Собрать образ
    ```bash
    bash build.sh
    ```

    2.2 Запустить контейнер
    ```bash
    bash start.sh
    ```

    2.3 Войти внутрь контейнера
    ```bash
    bash into.sh
    ```

3. Собрать код

    ```bash
    cd src/InfrasCal && mkdir build && cd build
    CC=/usr/bin/gcc-6 CXX=/usr/bin/g++-6 cmake -DCMAKE_BUILD_TYPE=Release ..
    make -j8
    ```


# Пример запуска на demo данных

```bash
./build/bin/infrastr_calib --camera-count 5 \
    --output ./data/demo/results \
    --map ./data/demo/map \
    --database ./data/demo/map/database.db \
    --input ./data/demo/ \
    --vocab ./data/vocabulary/sift128.bin \
    -v --camera-model pinhole-radtan --save
```

