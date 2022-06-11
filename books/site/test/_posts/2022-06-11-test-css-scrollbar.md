## make scrollbar always show


<style>
#exmp_01 ul {
  max-height:150px;
  overflow:scroll;
}

#exmp_01 ::-webkit-scrollbar {
  -webkit-appearance: none;
  width: 10px;
}

#exmp_01 ::-webkit-scrollbar-thumb {
  border-radius: 5px;
  background-color: rgba(0,0,0,.5);
  -webkit-box-shadow: 0 0 1px rgba(255,255,255,.5);
}
</style>
<div id='exmp_01'>
<ul>
  <li>This is some content</li>
  <li>This is some content</li>
  <li>This is some content</li>
  <li>This is some content</li>
  <li>This is some content</li>
  <li>This is some content</li>
  <li>This is some content</li>
  <li>This is some content</li>
  <li>This is some content</li>
  <li>This is some content</li>
  <li>This is some content</li>
  <li>This is some content</li>
</ul>
</div>