# Scripts

_A number of utility bash scripts used to automate some common tasks_

## Resize

Resize a png image to 500x and convert to jpg and reduce quality to 80%.

## DB Connect

Use to generate the temporary DB credentials for access to the cloud mongodb instance.

### Dependencies

1. Must be run in the root of the repository
2. the environment variable `ATLAS_API_KEY` must be present

An alias `connect` is also created to simplify calling this script.
