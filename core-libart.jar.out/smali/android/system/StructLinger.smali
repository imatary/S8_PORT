.class public final Landroid/system/StructLinger;
.super Ljava/lang/Object;
.source "StructLinger.java"


# instance fields
.field public final l_linger:I

.field public final l_onoff:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/system/StructLinger;->l_onoff:I

    iput p2, p0, Landroid/system/StructLinger;->l_linger:I

    return-void
.end method


# virtual methods
.method public isOn()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/system/StructLinger;->l_onoff:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Llibcore/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
