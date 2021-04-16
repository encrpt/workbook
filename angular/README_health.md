## angular project health check

### package.json

- Angular version (e.g. pre- IVY, 8 or lower)
- angular stack (e.g. material, store)
- third party libraries
- scripts section

### tsconfig.\*.json

- angularCompilerOptions

      "fullTemplateTypeCheck": true,
      "strictInjectionParameters": true,
      "strictInputAccessModifiers": true,
      "strictTemplates": true

- IVY is not disabled

      "enableIvy": false

- paths

### angular.json

- AOT compilation
- assets
- styles

      /projects
      /projects/**name**/architect/build/options/\*
      /projects/**name**/architect/build/configurations/\*

### app-routing.module & app.module.ts

- check modularization
- lazy loading
- route parameter (e.g. resolve, canActivate, data)
- walk through modules, check entry components

### component

- encapsulation: ViewEncapsulation.None
- changeDetection: ChangeDetectionStrategy.OnPush
- constructors vs. ngOnInit
- pipes

### code

- main.ts, index.html, styles.scss
- private libraries (e.g. forms) - documented, maintained
- complete typed
- services
- pipes
- environment
- implemeted tests, run tests, executeable
- scss / css
