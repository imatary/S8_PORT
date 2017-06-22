.class Landroid/support/v7/app/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;
.super Landroid/support/v7/app/AppCompatDelegateImplBase$AppCompatWindowCallbackBase;
.source "AppCompatDelegateImplV14.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AppCompatDelegateImplV14;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppCompatWindowCallbackV14"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/AppCompatDelegateImplV14;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplV14;Landroid/view/Window$Callback;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV14;

    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/AppCompatDelegateImplBase$AppCompatWindowCallbackBase;-><init>(Landroid/support/v7/app/AppCompatDelegateImplBase;Landroid/view/Window$Callback;)V

    return-void
.end method


# virtual methods
.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV14;

    # getter for: Landroid/support/v7/app/AppCompatDelegateImplV14;->mHandleNativeActionModes:Z
    invoke-static {v0}, Landroid/support/v7/app/AppCompatDelegateImplV14;->access$000(Landroid/support/v7/app/AppCompatDelegateImplV14;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;->startAsSupportActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplBase$AppCompatWindowCallbackBase;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    goto :goto_0
.end method

.method final startAsSupportActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 4

    new-instance v0, Landroid/support/v7/internal/view/SupportActionModeWrapper$CallbackWrapper;

    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV14;

    iget-object v3, v3, Landroid/support/v7/app/AppCompatDelegateImplV14;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3, p1}, Landroid/support/v7/internal/view/SupportActionModeWrapper$CallbackWrapper;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV14;

    invoke-virtual {v3, v0}, Landroid/support/v7/app/AppCompatDelegateImplV14;->startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v1, Landroid/support/v7/internal/view/SupportActionModeWrapper;

    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV14;

    iget-object v3, v3, Landroid/support/v7/app/AppCompatDelegateImplV14;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3, v2}, Landroid/support/v7/internal/view/SupportActionModeWrapper;-><init>(Landroid/content/Context;Landroid/support/v7/view/ActionMode;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/SupportActionModeWrapper$CallbackWrapper;->addActionModeWrapper(Landroid/support/v7/internal/view/SupportActionModeWrapper;)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
