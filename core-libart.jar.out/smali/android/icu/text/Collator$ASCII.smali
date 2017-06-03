.class final Landroid/icu/text/Collator$ASCII;
.super Ljava/lang/Object;
.source "Collator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/Collator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ASCII"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static equalIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 8

    const/16 v7, 0x5a

    const/16 v6, 0x41

    const/4 v5, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-eq v2, v4, :cond_0

    return v5

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_5

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v1, v3, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-gt v6, v1, :cond_4

    if-gt v1, v7, :cond_4

    add-int/lit8 v4, v1, 0x20

    if-eq v4, v3, :cond_1

    :cond_3
    return v5

    :cond_4
    if-gt v6, v3, :cond_3

    if-gt v3, v7, :cond_3

    add-int/lit8 v4, v3, 0x20

    if-ne v4, v1, :cond_3

    goto :goto_1

    :cond_5
    const/4 v4, 0x1

    return v4
.end method
