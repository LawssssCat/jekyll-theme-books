---
title: Test Bootstrap and Reboot
summary: Reboot, a collection of element-specific CSS changes in a single file, kickstart Bootstrap to provide an elegant, consistent, and simple baseline to build upon.
---

boostrap docs about Reboot(a collection of element-specific CSS changes): <https://getbootstrap.com/docs/5.1/content/reboot/#headings-and-paragraphs>

<style>
  .bd-example {
    border: 1px solid #000;
    margin-bottom: 1em;
  }
</style>

## Headings and paragraphs

Heading | Example
---     | ---
`<h1></h1>` or `<span class='h1'></span>` | <span class='h1'>h1. Bootstrap heading</span>
`<h2></h2>` or `<span class='h2'></span>` | <span class='h2'>h2. Bootstrap heading</span>
`<h3></h3>` or `<span class='h3'></span>` | <span class='h3'>h3. Bootstrap heading</span>
`<h4></h4>` or `<span class='h4'></span>` | <span class='h4'>h4. Bootstrap heading</span>
`<h5></h5>` or `<span class='h5'></span>` | <span class='h5'>h5. Bootstrap heading</span>
`<h6></h6>` or `<span class='h6'></span>` | <span class='h6'>h6. Bootstrap heading</span>
`<p></p>` or `<span class='p'></span>` | <span class='p'>p. Bootstrap paragraphs</span>

## Lists

`ul` - `li`

<div class="bd-example">
  <ul>
  <li>All lists have their top margin removed</li>
  <li>And their bottom margin normalized</li>
  <li>Nested lists have no bottom margin
  <ul>
  <li>This way they have a more even appearance</li>
  <li>Particularly when followed by more list items</li>
  </ul>
  </li>
  <li>The left padding has also been reset</li>
  </ul>
</div>

`ol` - `li`

<div class="bd-example">
  <ol>
  <li>Here’s an ordered list</li>
  <li>With a few list items</li>
  <li>It has the same overall look</li>
  <li>As the previous unordered list</li>
  </ol>
</div>

`dl` - `dt` - `dd`

<div class="bd-example">
  <dl>
    <dt>Description lists</dt>
    <dd>A description list is perfect for defining terms.</dd>
    <dt>Term</dt>
    <dd>Definition for the term.</dd>
    <dd>A second definition for the same term.</dd>
    <dt>Another term</dt>
    <dd>Definition for this other term.</dd>
  </dl>
</div>

## Code

inline code

```html
<code>
&lt;code&gt;
</code>
```

render result: (same as <code>`...`</code>)

<div class="bd-example">
  <code>
  &lt;code&gt;
  </code>
</div>

code blocks

```html
<pre><code>&lt;p&gt;Sample text here...&lt;/p&gt;
&lt;p&gt;And another line of sample text here...&lt;/p&gt;
</code></pre>
```

render result:

<div class="bd-example">
  <pre><code>&lt;p&gt;Sample text here...&lt;/p&gt;
  &lt;p&gt;And another line of sample text here...&lt;/p&gt;
  </code></pre>
</div>

## Variables

```html
<var>y</var> = <var>m</var><var>x</var> + <var>b</var>
```

render result:

<div class="bd-example">
<var>y</var> = <var>m</var><var>x</var> + <var>b</var>
</div>

## User input

Use the `<kbd>` to indicate input that is typically entered via keyboard.

```html
To switch directories, type <kbd>cd</kbd> followed by the name of the directory.<br>
To edit settings, press <kbd><kbd>ctrl</kbd> + <kbd>,</kbd></kbd>
```

render result:

<div class="bd-example">
To switch directories, type <kbd>cd</kbd> followed by the name of the directory.<br>
To edit settings, press <kbd><kbd>ctrl</kbd> + <kbd>,</kbd></kbd>
</div>

## Sample output

For indicating sample output from a program use the `<samp>` tag.

```html
<samp>This text is meant to be treated as sample output from a computer program.</samp>
```

render result:

<div class="bd-example">
<samp>This text is meant to be treated as sample output from a computer program.</samp>
</div>

## Tables

docs <https://getbootstrap.com/docs/5.1/content/tables/>

<div class="bd-example">
  <table>
    <caption>
      This is an example table, and this is its caption to describe the contents.
    </caption>
    <thead>
      <tr>
        <th>Table heading</th>
        <th>Table heading</th>
        <th>Table heading</th>
        <th>Table heading</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>Table cell</td>
        <td>Table cell</td>
        <td>Table cell</td>
        <td>Table cell</td>
      </tr>
      <tr>
        <td>Table cell</td>
        <td>Table cell</td>
        <td>Table cell</td>
        <td>Table cell</td>
      </tr>
      <tr>
        <td>Table cell</td>
        <td>Table cell</td>
        <td>Table cell</td>
        <td>Table cell</td>
      </tr>
    </tbody>
  </table>
</div>

Use contextual classes

<div class="bd-example">
  <table class="table">
      <thead>
        <tr>
          <th scope="col">Class</th>
          <th scope="col">Heading</th>
          <th scope="col">Heading</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <th scope="row">Default</th>
          <td>Cell</td>
          <td>Cell</td>
        </tr>
        <tr class="table-primary">
          <th scope="row">Primary</th>
          <td>Cell</td>
          <td>Cell</td>
        </tr>
        <tr class="table-secondary">
          <th scope="row">Secondary</th>
          <td>Cell</td>
          <td>Cell</td>
        </tr>
        <tr class="table-success">
          <th scope="row">Success</th>
          <td>Cell</td>
          <td>Cell</td>
        </tr>
        <tr class="table-danger">
          <th scope="row">Danger</th>
          <td>Cell</td>
          <td>Cell</td>
        </tr>
        <tr class="table-warning">
          <th scope="row">Warning</th>
          <td>Cell</td>
          <td>Cell</td>
        </tr>
        <tr class="table-info">
          <th scope="row">Info</th>
          <td>Cell</td>
          <td>Cell</td>
        </tr>
        <tr class="table-light">
          <th scope="row">Light</th>
          <td>Cell</td>
          <td>Cell</td>
        </tr>
        <tr class="table-dark">
          <th scope="row">Dark</th>
          <td>Cell</td>
          <td>Cell</td>
        </tr>
    </tbody>
  </table>
</div>

## Forms

+ `<fieldset>`s have no borders, padding, or margin so they can be easily used as wrappers for individual inputs or groups of inputs.
+ `<legend>`s, like fieldsets, have also been restyled to be displayed as a heading of sorts.
+ `<label>`s are set to `display: inline-block` to allow `margin` to be applied.
+ `<input>`s, `<select>`s, `<textarea>`s, and `<button>`s are mostly addressed by Normalize, but Reboot removes their `margin` and sets `line-height: inherit`, too.
+ `<textarea>`s are modified to only be resizable vertically as horizontal resizing often “breaks” page layout.
+ `<button>`s and `<input>` button elements have `cursor: pointer` when `:not(:disabled)`.

<div class='bd-example'> 
<form>
  <fieldset>
    <legend>Example legend</legend>
    <p>
      <label for="input">Example input</label>
      <input type="text" id="input" placeholder="Example input">
    </p>
    <p>
      <label for="email">Example email</label>
      <input type="email" id="email" placeholder="test@example.com">
    </p>
    <p>
      <label for="tel">Example telephone</label>
      <input type="tel" id="tel">
    </p>
    <p>
      <label for="url">Example url</label>
      <input type="url" id="url">
    </p>
    <p>
      <label for="number">Example number</label>
      <input type="number" id="number">
    </p>
    <p>
      <label for="search">Example search</label>
      <input type="search" id="search">
    </p>
    <p>
      <label for="range">Example range</label>
      <input type="range" id="range" min="0" max="10">
    </p>
    <p>
      <label for="file">Example file input</label>
      <input type="file" id="file">
    </p>
    <p>
      <label for="select">Example select</label>
      <select id="select">
        <option value="">Choose...</option>
        <optgroup label="Option group 1">
          <option value="">Option 1</option>
          <option value="">Option 2</option>
          <option value="">Option 3</option>
        </optgroup>
        <optgroup label="Option group 2">
          <option value="">Option 4</option>
          <option value="">Option 5</option>
          <option value="">Option 6</option>
        </optgroup>
      </select>
    </p>
    <p>
      <label>
        <input type="checkbox" value="">
        Check this checkbox
      </label>
    </p>
    <p>
      <label>
        <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked="">
        Option one is this and that
      </label>
      <label>
        <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
        Option two is something else that's also super long to demonstrate the wrapping of these fancy form controls.
      </label>
      <label>
        <input type="radio" name="optionsRadios" id="optionsRadios3" value="option3" disabled="">
        Option three is disabled
      </label>
    </p>
    <p>
      <label for="textarea">Example textarea</label>
      <textarea id="textarea" rows="3"></textarea>
    </p>
    <p>
      <label for="date">Example date</label>
      <input type="date" id="date">
    </p>
    <p>
      <label for="time">Example time</label>
      <input type="time" id="time">
    </p>
    <p>
      <label for="password">Example password</label>
      <input type="password" id="password">
    </p>
    <p>
      <label for="datetime-local">Example datetime-local</label>
      <input type="datetime-local" id="datetime-local">
    </p>
    <p>
      <label for="week">Example week</label>
      <input type="week" id="week">
    </p>
    <p>
      <label for="month">Example month</label>
      <input type="month" id="month">
    </p>
    <p>
      <label for="color">Example color</label>
      <input type="color" id="color">
    </p>
    <p>
      <label for="output">Example output</label>
      <output name="result" id="output">100</output>
    </p>
    <p>
      <button type="submit">Button submit</button>
      <input type="submit" value="Input submit button">
      <input type="reset" value="Input reset button">
      <input type="button" value="Input button">
    </p>
    <p>
      <button type="submit" disabled="">Button submit</button>
      <input type="submit" value="Input submit button" disabled="">
      <input type="reset" value="Input reset button" disabled="">
      <input type="button" value="Input button" disabled="">
    </p>
  </fieldset>
</form>
</div>

## Misc elements

### Pointers on buttons

<div class="bd-example">
<span role="button" tabindex="0">Non-button element button</span>
</div>

### Inline elements

<div class="bd-example">
  The <abbr title="HyperText Markup Language">HTML</abbr> abbreviation element.
</div>

### Address

<div class="bd-example">
  <address>
    <strong>Twitter, Inc.</strong><br>
    1355 Market St, Suite 900<br>
    San Francisco, CA 94103<br>
    <abbr title="Phone">P:</abbr> (123) 456-7890
  </address>
  <address>
    <strong>Full Name</strong><br>
    <a href="mailto:first.last@example.com">first.last@example.com</a>
  </address>
</div>

### Blockquote

<div class="bd-example">
  <blockquote class="blockquote">
    <p>A well-known quote, contained in a blockquote element.</p>
  </blockquote>
  <p>Someone famous in <cite title="Source Title">Source Title</cite></p>
</div>

### Summary

<div class="bd-example">
  <details>
    <summary>Some details</summary>
    <p>More info about the details.</p>
  </details>
  <details open="">
    <summary>Even more details</summary>
    <p>Here are even more details about the details.</p>
  </details>
</div>