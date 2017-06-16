.class public Lcom/sec/android/mimage/photoretouching/PhotoEditorApplication;
.super Landroid/app/Application;
.source "PhotoEditorApplication.java"


# instance fields
.field private mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

.field mStateListener:Lcom/samsung/android/sdk/bixby/BixbyApi$StartStateListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    new-instance v0, Lcom/sec/android/mimage/photoretouching/PhotoEditorApplication$1;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/PhotoEditorApplication$1;-><init>(Lcom/sec/android/mimage/photoretouching/PhotoEditorApplication;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoEditorApplication;->mStateListener:Lcom/samsung/android/sdk/bixby/BixbyApi$StartStateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/mimage/photoretouching/PhotoEditorApplication;)Lcom/samsung/android/sdk/bixby/BixbyApi;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoEditorApplication;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    return-object v0
.end method


# virtual methods
.method public getBixbyApi()Lcom/samsung/android/sdk/bixby/BixbyApi;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoEditorApplication;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->isBixbySupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoEditorApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "PhotoEditor"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoEditorApplication;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoEditorApplication;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoEditorApplication;->mStateListener:Lcom/samsung/android/sdk/bixby/BixbyApi$StartStateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setStartStateListener(Lcom/samsung/android/sdk/bixby/BixbyApi$StartStateListener;)V

    :cond_0
    return-void
.end method
