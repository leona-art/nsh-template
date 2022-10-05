---
to: <%= type %>/<%= dir %><%= name %>.tsx
unless_exists: true
---
import {FC} from 'react'

interface Props {
}

const <%= componentName %>: FC<Props> = ({...props}) => {
    return (
        <>
      
        </>
    );
};
export default <%= componentName %>