.class Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$2$1;
.super Ljava/lang/Object;
.source "MoveToSecretboxCmd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$2;->makeHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$2;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$2;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$2$1;->this$1:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$2$1;->this$1:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$2;

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    const/4 v1, 0x0

    invoke-static {}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$100()I

    move-result v2

    invoke-static {}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$200()I

    move-result v3

    invoke-static {}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$300()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$2$1;->this$1:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$2;

    iget-boolean v6, v6, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$2;->val$spreadBurstShot:Z

    invoke-static/range {v0 .. v6}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$400(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;IIILjava/util/ArrayList;Ljava/lang/String;Z)V

    return-void
.end method
