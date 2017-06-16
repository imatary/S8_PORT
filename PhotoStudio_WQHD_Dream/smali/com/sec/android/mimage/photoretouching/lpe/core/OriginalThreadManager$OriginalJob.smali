.class public Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager$OriginalJob;
.super Ljava/lang/Object;
.source "OriginalThreadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OriginalJob"
.end annotation


# instance fields
.field callback:Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager$JobDoneCallBack;

.field job:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager$JobDoneCallBack;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager$OriginalJob;->job:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager$OriginalJob;->callback:Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager$JobDoneCallBack;

    return-void
.end method
