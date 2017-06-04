.class public Lcom/samsung/android/sdk/ssf/contact/io/ImageMetaInfoList;
.super Ljava/lang/Object;
.source "ImageMetaInfoList.java"


# instance fields
.field protected imgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/contact/io/ImageReqInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setImgs(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/contact/io/ImageReqInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/contact/io/ImageMetaInfoList;->imgs:Ljava/util/ArrayList;

    return-void
.end method
