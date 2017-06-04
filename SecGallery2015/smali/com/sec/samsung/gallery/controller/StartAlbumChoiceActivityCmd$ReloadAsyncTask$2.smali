.class Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask$2;
.super Ljava/lang/Object;
.source "StartAlbumChoiceActivityCmd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask$2;->this$1:Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask$2;->this$1:Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/controller/StartAlbumChoiceActivityCmd$ReloadAsyncTask;->cancel(Z)Z

    return-void
.end method
