.class Lcom/samsung/android/devicecog/gallery/controller/ExecuteDCHandlerCmd$1;
.super Ljava/lang/Object;
.source "ExecuteDCHandlerCmd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/devicecog/gallery/controller/ExecuteDCHandlerCmd;->handleCommand(Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/devicecog/gallery/controller/ExecuteDCHandlerCmd;

.field final synthetic val$dcCmdExecutable:Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;

.field final synthetic val$parameters:Ljava/util/List;

.field final synthetic val$stateId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/devicecog/gallery/controller/ExecuteDCHandlerCmd;Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/devicecog/gallery/controller/ExecuteDCHandlerCmd$1;->this$0:Lcom/samsung/android/devicecog/gallery/controller/ExecuteDCHandlerCmd;

    iput-object p2, p0, Lcom/samsung/android/devicecog/gallery/controller/ExecuteDCHandlerCmd$1;->val$dcCmdExecutable:Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;

    iput-object p3, p0, Lcom/samsung/android/devicecog/gallery/controller/ExecuteDCHandlerCmd$1;->val$stateId:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/devicecog/gallery/controller/ExecuteDCHandlerCmd$1;->val$parameters:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/controller/ExecuteDCHandlerCmd$1;->val$dcCmdExecutable:Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/controller/ExecuteDCHandlerCmd$1;->val$stateId:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/controller/ExecuteDCHandlerCmd$1;->val$parameters:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;->onDCCommandStarted(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
