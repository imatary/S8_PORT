.class public Lcom/samsung/android/sdk/ssf/contact/io/ImageReqInfo;
.super Ljava/lang/Object;
.source "ImageReqInfo.java"


# instance fields
.field protected img:Ljava/lang/String;

.field protected no:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setImage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/contact/io/ImageReqInfo;->img:Ljava/lang/String;

    return-void
.end method

.method public setNum(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/ssf/contact/io/ImageReqInfo;->no:I

    return-void
.end method
