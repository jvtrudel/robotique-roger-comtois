formats=('phone' 'desktop' 'tablet' 'hdscreen')

for i in ${formats[@]}; do
  sass sass/$i.sass public/css/$i.css
done

files=('index' 'club/fll' 'club/index' 'club/liens' 'koclego/projet' 'koclego/equipe' 'koclego/robot' 'partenaires/index')

for i in ${files[@]}; do
  cat template/header.mustache > temp.mustache
  cat template/$i.mustache >> temp.mustache
  cat template/footer.mustache >> temp.mustache
  mustache content/$i.yml temp.mustache > public/$i.html
done
