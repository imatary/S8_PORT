.class Landroid/icu/impl/UCharacterProperty$13;
.super Landroid/icu/impl/UCharacterProperty$BiDiIntProperty;
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
.method constructor <init>(Landroid/icu/impl/UCharacterProperty;Landroid/icu/impl/UCharacterProperty;)V
    .locals 0

    iput-object p2, p0, Landroid/icu/impl/UCharacterProperty$13;->this$0:Landroid/icu/impl/UCharacterProperty;

    invoke-direct {p0, p1}, Landroid/icu/impl/UCharacterProperty$BiDiIntProperty;-><init>(Landroid/icu/impl/UCharacterProperty;)V

    return-void
.end method


# virtual methods
.method getValue(I)I
    .locals 1

    sget-object v0, Landroid/icu/impl/UBiDiProps;->INSTANCE:Landroid/icu/impl/UBiDiProps;

    invoke-virtual {v0, p1}, Landroid/icu/impl/UBiDiProps;->getClass(I)I

    move-result v0

    return v0
.end method
