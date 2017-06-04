.class Lcom/sec/samsung/gallery/controller/HideAlbums$1;
.super Ljava/lang/Object;
.source "HideAlbums.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/HideAlbums;->showDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/HideAlbums;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/HideAlbums;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/HideAlbums$1;->this$0:Lcom/sec/samsung/gallery/controller/HideAlbums;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/HideAlbums$1;->this$0:Lcom/sec/samsung/gallery/controller/HideAlbums;

    # invokes: Lcom/sec/samsung/gallery/controller/HideAlbums;->dismissDialog()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/HideAlbums;->access$000(Lcom/sec/samsung/gallery/controller/HideAlbums;)V

    return-void
.end method
