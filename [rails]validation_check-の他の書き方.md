---
title: "[rails]validation_check の他の書き方"
tags: ""
---

def update
    if @user.update(user_params)
      redirect_to users_path(@user), notice: "You have updated user successfully."
    else
      render "show"
    end

  end

  flash[:notice] = ""

  redirect_to "", notive: ""
