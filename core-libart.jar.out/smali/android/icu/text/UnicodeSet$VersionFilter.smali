.class Landroid/icu/text/UnicodeSet$VersionFilter;
.super Ljava/lang/Object;
.source "UnicodeSet.java"

# interfaces
.implements Landroid/icu/text/UnicodeSet$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/UnicodeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VersionFilter"
.end annotation


# instance fields
.field version:Landroid/icu/util/VersionInfo;


# direct methods
.method constructor <init>(Landroid/icu/util/VersionInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/text/UnicodeSet$VersionFilter;->version:Landroid/icu/util/VersionInfo;

    return-void
.end method


# virtual methods
.method public contains(I)Z
    .locals 3

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/icu/lang/UCharacter;->getAge(I)Landroid/icu/util/VersionInfo;

    move-result-object v0

    invoke-static {}, Landroid/icu/text/UnicodeSet;->-get0()Landroid/icu/util/VersionInfo;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Landroid/icu/text/UnicodeSet$VersionFilter;->version:Landroid/icu/util/VersionInfo;

    invoke-virtual {v0, v2}, Landroid/icu/util/VersionInfo;->compareTo(Landroid/icu/util/VersionInfo;)I

    move-result v2

    if-gtz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
