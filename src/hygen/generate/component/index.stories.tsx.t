---
to: stories/<%= type %>/<%= name %>.stories.tsx
unless_exists: true
---
import React from "react";
import { ComponentStory,ComponentMeta} from "@storybook/react";
import <%= componentName %> from "../../<%= type %>/<%= dir %><%= name %>";

export default {
    title: "<%= type %>/<%= name %>",
    component: <%= componentName %>,
    argTypes: {},
} as ComponentMeta<typeof <%= componentName %>>;

const Template:ComponentStory<typeof <%= componentName %>> = (args) => <<%= componentName %> {...args} />;

export const Default = Template.bind({});
Default.args = {
};