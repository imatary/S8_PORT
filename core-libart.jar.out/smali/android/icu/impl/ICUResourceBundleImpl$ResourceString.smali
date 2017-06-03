.class final Landroid/icu/impl/ICUResourceBundleImpl$ResourceString;
.super Landroid/icu/impl/ICUResourceBundleImpl;
.source "ICUResourceBundleImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUResourceBundleImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ResourceString"
.end annotation


# instance fields
.field private resource:I

.field private value:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleImpl;-><init>(Landroid/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;)V

    iput p3, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceString;->resource:I

    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceString;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v1, v1, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    invoke-virtual {v1, p3}, Landroid/icu/impl/ICUResourceBundleReader;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xc

    if-lt v1, v2, :cond_0

    invoke-static {}, Landroid/icu/impl/CacheValue;->futureInstancesWillBeStrong()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iput-object v0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceString;->value:Ljava/lang/String;

    :cond_1
    return-void
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceString;->value:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceString;->value:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceString;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v0, v0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    iget v1, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceString;->resource:I

    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundleReader;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
