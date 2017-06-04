.class public Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ImageDetails;
.super Ljava/lang/Object;
.source "ImageDetails.java"


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
.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ImageDetails;->no:I

    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ImageDetails;->img:Ljava/lang/String;

    return-void
.end method
