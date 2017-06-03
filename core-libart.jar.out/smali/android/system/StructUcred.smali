.class public final Landroid/system/StructUcred;
.super Ljava/lang/Object;
.source "StructUcred.java"


# instance fields
.field public final gid:I

.field public final pid:I

.field public final uid:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/system/StructUcred;->pid:I

    iput p2, p0, Landroid/system/StructUcred;->uid:I

    iput p3, p0, Landroid/system/StructUcred;->gid:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Llibcore/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
