.class public Lcom/samsung/android/sdk/ssf/social/io/ArticleMetaCounterRequest;
.super Ljava/lang/Object;
.source "ArticleMetaCounterRequest.java"


# instance fields
.field protected cancel_action:Z

.field protected inc:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setCancelAction(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/ssf/social/io/ArticleMetaCounterRequest;->cancel_action:Z

    return-void
.end method

.method public setInc(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/ssf/social/io/ArticleMetaCounterRequest;->inc:I

    return-void
.end method
