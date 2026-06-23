function validasiUsia(usia) {
    if (usia > 20) {
        return "Usia valid, lebih dari 20 tahun";
    } else {
        return "Usia tidak valid, harus lebih dari 20 tahun";
    }
}

console.log(validasiUsia(22));