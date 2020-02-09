from invoke import task


@task
def local(c):
    c.run('honcho start')


@task
def test(c):
    c.run('pytest')


@task
def deploy(c):
    c.run('zappa deploy')
