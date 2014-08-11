# Category, Category Tag and Tag Page Generator for Jekyll

Jekyll plugin for generating page with posts with tags, categories and categories with tags.

If you want to have nice routes with index page for each category, tag and category-tag combinations Category Tag Page Generator is for you.

## Installation

In your Jekyll site source root directory, copy `_includes`, `_plugins` and `_layouts` directories from this repository.

In `config.yml` you can define routes for category pages

```yaml
category_dir: 'categories'
category_title_prefix: 'Category: '

tag_dir: 'tags'
tag_title_prefix: 'Tag: '
```

## Usage

Category-Tag Page Generator will create routes:

- `http://your-name.github.io/categories/category-name`
- `http://your-name.github.io/tags/tag-name`
- `http://your-name.github.io/categories/category-name/tags/tag-name`

Each route is a website with posts that matches category/tag name.
