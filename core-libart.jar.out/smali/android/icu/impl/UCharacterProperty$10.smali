.class Landroid/icu/impl/UCharacterProperty$10;
.super Landroid/icu/impl/UCharacterProperty$BinaryProperty;
.source "UCharacterProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/UCharacterProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/icu/impl/UCharacterProperty;


# direct methods
.method constructor <init>(Landroid/icu/impl/UCharacterProperty;Landroid/icu/impl/UCharacterProperty;I)V
    .locals 0

    iput-object p2, p0, Landroid/icu/impl/UCharacterProperty$10;->this$0:Landroid/icu/impl/UCharacterProperty;

    invoke-direct {p0, p1, p3}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    return-void
.end method


# virtual methods
.method contains(I)Z
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x66

    if-gt p1, v1, :cond_1

    const/16 v1, 0x41

    if-lt p1, v1, :cond_1

    const/16 v1, 0x46

    if-le p1, v1, :cond_0

    const/16 v1, 0x61

    if-lt p1, v1, :cond_1

    :cond_0
    return v0

    :cond_1
    const v1, 0xff21

    if-lt p1, v1, :cond_2

    const v1, 0xff46

    if-gt p1, v1, :cond_2

    const v1, 0xff26

    if-le p1, v1, :cond_0

    const v1, 0xff41

    if-ge p1, v1, :cond_0

    :cond_2
    invoke-static {p1}, Landroid/icu/lang/UCharacter;->getType(I)I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_3

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
