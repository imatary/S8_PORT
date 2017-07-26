.class public abstract Lcom/github/clans/fab/AbsFloatingActionMenu;
.super Landroid/view/ViewGroup;
.source "AbsFloatingActionMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/clans/fab/AbsFloatingActionMenu$a;
    }
.end annotation


# static fields
.field public static final a:I = 0xc8

.field public static final b:F = 0.0f

.field public static final c:F = -135.0f

.field public static final d:F = 135.0f

.field public static final e:I = 0x0

.field public static final f:I = 0x1

.field public static final g:I = 0x2

.field public static final h:I = 0x3

.field public static final i:I = 0x0

.field public static final j:I = 0x1


# instance fields
.field protected k:Lcom/github/clans/fab/AbsFloatingActionMenu$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public abstract a(Z)V
.end method

.method public abstract a()Z
.end method

.method public abstract b(Z)V
.end method

.method public abstract c(Z)V
.end method

.method public setOnMenuToggleListener(Lcom/github/clans/fab/AbsFloatingActionMenu$a;)V
    .locals 0

    iput-object p1, p0, Lcom/github/clans/fab/AbsFloatingActionMenu;->k:Lcom/github/clans/fab/AbsFloatingActionMenu$a;

    return-void
.end method

.method public abstract setOpenDirection(I)V
.end method

.method public abstract setOpenLabel(I)V
.end method
