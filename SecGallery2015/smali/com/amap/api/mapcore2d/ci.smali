.class Lcom/amap/api/mapcore2d/ci;
.super Ljava/lang/Object;
.source "UiSettingsDelegateImp.java"

# interfaces
.implements Lcom/amap/api/mapcore2d/au;


# instance fields
.field private a:Lcom/amap/api/mapcore2d/ag;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:I

.field private i:I

.field private final j:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore2d/ag;)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/ci;->b:Z

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/ci;->c:Z

    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/ci;->d:Z

    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/ci;->e:Z

    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/ci;->f:Z

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/ci;->g:Z

    iput v0, p0, Lcom/amap/api/mapcore2d/ci;->h:I

    iput v0, p0, Lcom/amap/api/mapcore2d/ci;->i:I

    new-instance v0, Lcom/amap/api/mapcore2d/cj;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/cj;-><init>(Lcom/amap/api/mapcore2d/ci;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ci;->j:Landroid/os/Handler;

    iput-object p1, p0, Lcom/amap/api/mapcore2d/ci;->a:Lcom/amap/api/mapcore2d/ag;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/ci;)Lcom/amap/api/mapcore2d/ag;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/ci;->a:Lcom/amap/api/mapcore2d/ag;

    return-object v0
.end method

.method static synthetic b(Lcom/amap/api/mapcore2d/ci;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/ci;->e:Z

    return v0
.end method

.method static synthetic c(Lcom/amap/api/mapcore2d/ci;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/ci;->g:Z

    return v0
.end method

.method static synthetic d(Lcom/amap/api/mapcore2d/ci;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/ci;->f:Z

    return v0
.end method

.method static synthetic e(Lcom/amap/api/mapcore2d/ci;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/ci;->c:Z

    return v0
.end method


# virtual methods
.method public a(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput p1, p0, Lcom/amap/api/mapcore2d/ci;->h:I

    iget-object v0, p0, Lcom/amap/api/mapcore2d/ci;->a:Lcom/amap/api/mapcore2d/ag;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/ag;->c(I)V

    return-void
.end method

.method public a(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/ci;->g:Z

    iget-object v0, p0, Lcom/amap/api/mapcore2d/ci;->j:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public a()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/ci;->g:Z

    return v0
.end method

.method public b(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/ci;->e:Z

    iget-object v0, p0, Lcom/amap/api/mapcore2d/ci;->j:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public c(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/ci;->f:Z

    iget-object v0, p0, Lcom/amap/api/mapcore2d/ci;->j:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public d()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/ci;->c:Z

    return v0
.end method

.method public e(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/ci;->b:Z

    return-void
.end method

.method public e()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/ci;->b:Z

    return v0
.end method

.method public f(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/ci;->d:Z

    return-void
.end method

.method public f()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/ci;->d:Z

    return v0
.end method

.method public g(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/ci;->f(Z)V

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/ci;->e(Z)V

    return-void
.end method
