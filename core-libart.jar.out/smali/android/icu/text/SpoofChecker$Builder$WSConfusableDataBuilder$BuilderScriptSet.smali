.class Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;
.super Ljava/lang/Object;
.source "SpoofChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BuilderScriptSet"
.end annotation


# instance fields
.field codePoint:I

.field index:I

.field rindex:I

.field sset:Landroid/icu/text/SpoofChecker$ScriptSet;

.field trie:Landroid/icu/impl/Trie2Writable;


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;->codePoint:I

    iput-object v2, p0, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;->trie:Landroid/icu/impl/Trie2Writable;

    iput-object v2, p0, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;->sset:Landroid/icu/text/SpoofChecker$ScriptSet;

    iput v1, p0, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;->index:I

    iput v1, p0, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;->rindex:I

    return-void
.end method
