<?php

class BlogExtension extends DataExtension {

	public function getCMSFields() {
		Requirements::css(BLOGGER_DIR.'/css/cms.css');
		Requirements::javascript(BLOGGER_DIR.'/js/cms.js');

		$self = &$this->owner;

		$this->beforeUpdateCMSFields(function ($fields) use ($self) {
				if (!$self->canEdit()) {
					return;
				}

				$categories = GridField::create(
					'Categories',
					_t('Blog.Categories', 'Categories'),
					$self->Categories());

				$tags = GridField::create(
					'Tags',
					_t('Blog.Tags', 'Tags'),
					$self->Tags());

				/**
				 * @var FieldList $fields
				 */
				$fields->addFieldsToTab('Root.Categorisation', array(
						$categories,
						$tags,
					));

				$fields->findOrMakeTab('Root.Categorisation')->addExtraClass('blog-cms-categorisation');
			});

		return parent::getCMSFields();
	}

}
