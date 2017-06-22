.class Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$3;
.super Ljava/lang/Object;
.source "SuperImpose.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->showDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->LABEL_SCREEN_ID:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->LABEL_SCREEN_CANCEL_ID:Ljava/lang/String;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->LABEL_SCREEN_CANCEL_EVENT_NAME:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->setLabelStyleNum(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$3$1;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$3$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$3;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
