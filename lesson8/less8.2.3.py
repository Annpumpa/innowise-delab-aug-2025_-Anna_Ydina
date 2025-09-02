def calculate_average_score(scores, ignore_lowest=False):
    # Проверка на пустой список
    if not scores:
        return 0.0
    
    # Если нужно игнорировать худшую оценку и есть более одной оценки
    if ignore_lowest and len(scores) > 1:
        min_score = min(scores)
        filtered_scores = [score for score in scores if score != min_score]
        # Если удалили только одно вхождение минимальной оценки
        if len(filtered_scores) == len(scores) - 1:
            average = sum(filtered_scores) / len(filtered_scores)
        else:
            average = sum(scores) / len(scores)
    else:
        average = sum(scores) / len(scores)
    
    return round(average, 2)