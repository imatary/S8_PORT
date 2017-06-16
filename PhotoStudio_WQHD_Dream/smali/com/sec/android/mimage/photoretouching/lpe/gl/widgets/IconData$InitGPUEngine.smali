.class public Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$InitGPUEngine;
.super Landroid/os/AsyncTask;
.source "IconData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitGPUEngine"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    invoke-static {p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->access$002(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$InitGPUEngine;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    const-string v0, "PEDIT_Icondata"

    const-string v1, " initialised secimaging instance in icondata "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->access$000()Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ICON DATA"

    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getNewSecImagingInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;

    move-result-object v0

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->mSecImaging:Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->access$102(Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;)Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;

    const/4 v0, 0x1

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->isInitGPUEngine:Z
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->access$202(Z)Z

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->mappingGPUIds:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    return-object v0
.end method
