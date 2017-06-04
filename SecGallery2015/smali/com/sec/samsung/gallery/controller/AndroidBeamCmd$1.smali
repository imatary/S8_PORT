.class Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$1;
.super Ljava/lang/Object;
.source "AndroidBeamCmd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;

    # invokes: Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->initBeamHelper()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->access$000(Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;)V

    return-void
.end method
