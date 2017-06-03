.class Landroid/icu/impl/UCharacterProperty$18;
.super Landroid/icu/impl/UCharacterProperty$IntProperty;
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

    iput-object p2, p0, Landroid/icu/impl/UCharacterProperty$18;->this$0:Landroid/icu/impl/UCharacterProperty;

    invoke-direct {p0, p1, p3}, Landroid/icu/impl/UCharacterProperty$IntProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    return-void
.end method


# virtual methods
.method getMaxValue(I)I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method getValue(I)I
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/UCharacterProperty$18;->this$0:Landroid/icu/impl/UCharacterProperty;

    invoke-virtual {v0, p1}, Landroid/icu/impl/UCharacterProperty;->getProperty(I)I

    move-result v0

    invoke-static {v0}, Landroid/icu/impl/UCharacterProperty;->-wrap1(I)I

    move-result v0

    invoke-static {v0}, Landroid/icu/impl/UCharacterProperty;->-wrap2(I)I

    move-result v0

    return v0
.end method
