"use client"

type deleteButtonProps = {
    id: string
    deleteButton: (id: string) => void
}

export function DeleteButton({id , deleteButton}: deleteButtonProps){
    return <input type="button"
    className="bg-red-100 text-red-800 text-xs font-medium me-2 px-2.5 py-0.5 rounded dark:bg-red-900 dark:text-red-300 border border-slate-300 text-slate-300 px-2 py-1 rounded hover:bg-slate-700 focus-within:bg-slate-700 outline-none"
    value="Delete"
    onClick={e=>{deleteButton(id)}}
    />

}