.class final Landroid/icu/impl/ICUResourceBundleReader$IsAcceptable;
.super Ljava/lang/Object;
.source "ICUResourceBundleReader.java"

# interfaces
.implements Landroid/icu/impl/ICUBinary$Authenticate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUResourceBundleReader;
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

.method synthetic constructor <init>(Landroid/icu/impl/ICUResourceBundleReader$IsAcceptable;)V
    .locals 0

    invoke-direct {p0}, Landroid/icu/impl/ICUResourceBundleReader$IsAcceptable;-><init>()V

    return-void
.end method


# virtual methods
.method public isDataVersionAcceptable([B)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    aget-byte v2, p1, v1

    if-ne v2, v0, :cond_1

    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    if-lt v2, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    aget-byte v2, p1, v1

    const/4 v3, 0x2

    if-gt v3, v2, :cond_2

    aget-byte v2, p1, v1

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method
