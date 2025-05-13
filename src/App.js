import React from 'react';

function App() {
  const envVars = Object.entries(window._env_)
    .filter(([key]) => key.startsWith('REACT_APP_'));

  return (
    <div>
      <h1>Hello {window._env_.REACT_APP_NAME}</h1>
      <h2>All Environment Variables:</h2>
      <ul>
        {envVars.map(([key, value]) => (
          <li key={key}>
            <strong>{key}</strong>: {value}
          </li>
        ))}
      </ul>
    </div>
  );
}

export default App;