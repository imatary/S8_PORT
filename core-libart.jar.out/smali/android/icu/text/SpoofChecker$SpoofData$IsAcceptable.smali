.class final Landroid/icu/text/SpoofChecker$SpoofData$IsAcceptable;
.super Ljava/lang/Object;
.source "SpoofChecker.java"

# interfaces
.implements Landroid/icu/impl/ICUBinary$Authenticate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/SpoofChecker$SpoofData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IsAcceptable"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/SpoofChecker$SpoofData$IsAcceptable;)V
    .locals 0

    invoke-direct {p0}, Landroid/icu/text/SpoofChecker$SpoofData$IsAcceptable;-><init>()V

    return-void
.end method


# virtual methods
.method public isDataVersionAcceptable([B)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    aget-byte v2, p1, v1

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
