.class public abstract Lcom/sec/android/app/camera/engine/AbstractCeState;
.super Ljava/lang/Object;
.source "AbstractCeState.java"


# instance fields
.field private final mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

.field private final mRequestQueue:Lcom/sec/android/app/camera/engine/CeRequestQueue;

.field private final mState:Lcom/sec/android/app/camera/interfaces/Engine$CeState;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/engine/CommonEngine;Lcom/sec/android/app/camera/engine/CeRequestQueue;Lcom/sec/android/app/camera/interfaces/Engine$CeState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/AbstractCeState;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    iput-object p2, p0, Lcom/sec/android/app/camera/engine/AbstractCeState;->mRequestQueue:Lcom/sec/android/app/camera/engine/CeRequestQueue;

    iput-object p3, p0, Lcom/sec/android/app/camera/engine/AbstractCeState;->mState:Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    return-void
.end method


# virtual methods
.method public abstract cancelRequest(Lcom/sec/android/app/camera/engine/CeRequest;)V
.end method

.method protected getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AbstractCeState;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    return-object v0
.end method

.method protected getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AbstractCeState;->mRequestQueue:Lcom/sec/android/app/camera/engine/CeRequestQueue;

    return-object v0
.end method

.method public getState()Lcom/sec/android/app/camera/interfaces/Engine$CeState;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AbstractCeState;->mState:Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    return-object v0
.end method

.method public abstract handleMessage(Landroid/os/Message;)V
.end method

.method public abstract handleRequest(Lcom/sec/android/app/camera/engine/CeRequest;)Z
.end method
