module.exports = {
    prompt: ({ inquirer }) => {
      const questions = [
        {
          type: "select",
          name: "type",
          message: "component or page?",
          choices: ["component", "page"],
        },
        {
            type:"input",
            message:"directory?",
            name: "dir",
        },
        {
          type: "input",
          name: "name",
          message: "What is the name?",
        },
      ];
      return inquirer.prompt(questions).then((answers) => {
        const { dir, name,type } = answers;
        const componentName=name[0].toUpperCase()+name.slice(1)
        return { 
            type:`${type}s`,
            dir:`${dir}${dir.slice(-1)==='/'?'':'/'}`,
            name,
            componentName 
        };
      });
    },
  };