
function chunkArrayInGroups(arr, size) {
    let main = []
    for(let i = 0; i < arr.length;i += size)
        main.push(arr.slice(i, i + size))

    return main;
}

chunkArrayInGroups(["a", "b", "c", "d"], 2);
