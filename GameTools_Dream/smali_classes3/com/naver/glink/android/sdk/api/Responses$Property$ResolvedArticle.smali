.class public Lcom/naver/glink/android/sdk/api/Responses$Property$ResolvedArticle;
.super Lcom/naver/glink/android/sdk/model/BaseModel;
.source "Responses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/api/Responses$Property;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResolvedArticle"
.end annotation


# instance fields
.field public htmlTag:Ljava/lang/String;

.field public mediaType:Ljava/lang/String;

.field public param:Ljava/lang/String;

.field public thumbnail:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/model/BaseModel;-><init>()V

    return-void
.end method
