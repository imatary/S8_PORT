.class Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$1;
.super Ljava/util/HashMap;
.source "ShowDeleteDialogCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "[I>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;

    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;->access$000(Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd;)I

    move-result v0

    const-string/jumbo v1, "100"

    new-array v2, v7, [I

    const v3, 0x7f0a0328

    aput v3, v2, v4

    aput v0, v2, v5

    aput v4, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "010"

    new-array v2, v7, [I

    const v3, 0x7f0a0329

    aput v3, v2, v4

    aput v0, v2, v5

    aput v4, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "001"

    new-array v2, v7, [I

    const v3, 0x7f0a030f

    aput v3, v2, v4

    aput v0, v2, v5

    aput v4, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/sec/samsung/gallery/controller/ShowDeleteDialogCmd$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
