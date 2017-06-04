.class Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils$1;
.super Landroid/database/ContentObserver;
.source "LibWifiDisplayUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils$1;->this$0:Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils$1;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 3

    const-string/jumbo v0, "LibWifiDisplayUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onChange selfChange = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils$1;->this$0:Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;

    # invokes: Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;->update()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;->access$000(Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;)V

    return-void
.end method
